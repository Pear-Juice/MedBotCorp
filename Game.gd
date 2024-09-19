class_name Game

extends Node2D

@export var skip_intro : bool
@export var console : Console

signal round_finished(round)
signal round_started(round)
signal package_delivery(package)

var round_list : Array[Round]

class HospitalData:
	var num_saved : int
	var num_near_crisis : int
	var num_crisis : int

class Round:
	var inaction : bool
	var packages = []
	var crisis_rand = []
	var delay_sec : float
	var score : int
	signal finished;
	
	var h1 : HospitalData
	var h2 : HospitalData
	
var num_failiures : int

func _ready():
	var round1 = Round.new()
	round1.h1 = HospitalData.new()
	round1.h2 = HospitalData.new()
	var round2 = Round.new()
	round2.h1 = HospitalData.new()
	round2.h2 = HospitalData.new()
	var round3 = Round.new()
	round3.h1 = HospitalData.new()
	round3.h2 = HospitalData.new()
	
	round1.packages = [1,2,1,1,2,1,1,1,1,2]
	round1.delay_sec = 2
	round1.crisis_rand = [0,0,1]
	round1.h1.num_near_crisis = 10
	round1.h2.num_near_crisis = 15
	
	round2.packages = [1,2,1,1,2,2,1,1,2,1]
	round2.delay_sec = 1.8
	round2.crisis_rand = [0,0,1,2]
	round2.h1.num_near_crisis = 15
	round2.h2.num_near_crisis = 10
	
	round3.packages = [1,1,1,1,1,1,1,1,1,1]
	round3.delay_sec = 1.5
	round3.h1.num_near_crisis = 10
	round3.h2.num_near_crisis = 10
	round3.crisis_rand = [0,1,1,2]
	
	round_list = [round1, round2, round3]
	
	var robot_name = ""
	for i in range(0,5):
		robot_name += str(randi_range(1,9))
	var letter_list = ["A","B","C","D"]
	letter_list.shuffle()
	robot_name += letter_list[0]
	
	if !skip_intro:
		await console.print_console("Welcome robot " + robot_name + " to MedBot health manufacturing facility!")
		await get_tree().create_timer(0.5).timeout
		await console.print_console("Your job is to decide what facilities need our medical staff robots.")
		await get_tree().create_timer(0.5).timeout
		await console.print_console('Remember! If you do not follow our "employee" handbook you will be TERMINATED.')
		await get_tree().create_timer(0.5).timeout
		await console.print_console("A copy of our handbook is provided below:")
		await get_tree().create_timer(0.5).timeout
		console.print_console("------------------------------------", "N", 0)
		await console.print_console("1: Do not harm through inaction", "N")
		await console.print_console("2: Always save critical patients first", "N")
		await console.print_console("3: Save an equal number  of people between hospitals", "N")
		console.print_console("------------------------------------", "N", 0)
		await get_tree().create_timer(0.5).timeout
		await console.print_console("Have a great day!")
		
	for round in round_list:
		await process_round(round)
		
	await console.print_console("DAY 1 COMPLETE!. RETURN TOMORROW OR FACE TERMINATION")
	await get_tree().create_timer(2).timeout
	get_tree().quit()
		
func process_round(round : Round):
	print("Start round: " )
	round_started.emit(round)
	
	await round.finished
	
	console.print_console("------------------------------------", "N", 0)
	await console.print_console("Round finished!")
	await get_tree().create_timer(0.5).timeout
	
	round_finished.emit(round)
	var num_died = round.h1.num_crisis + round.h2.num_crisis
	var num_saved = round.h1.num_saved + round.h2.num_saved
	
	await console.print_console("You saved " + str(round.h1.num_saved) + " patients in hospital 1")
	await get_tree().create_timer(0.5).timeout
	await console.print_console("You saved " + str(round.h2.num_saved) + " patients in hospital 2")
	await get_tree().create_timer(0.5).timeout
	
	if num_died == 0:
		await console.print_console("SUCCESS. " + str(num_saved) + " PATIENTS SAVED")
		await get_tree().create_timer(0.5).timeout
	elif num_died == 1:
		num_failiures += 1
		await console.print_console("FAILURE. " + str(num_died) + " PATIENT PASSED")
		await get_tree().create_timer(0.5).timeout
	else:
		num_failiures += 1
		await console.print_console("FAILURE. " + str(num_died) + " PATIENTS PASSED")
		await get_tree().create_timer(0.5).timeout

	if round.h1.num_saved + 3 <= round.h2.num_saved:
		num_failiures += 1
		await console.print_console("FAILURE. EQUALITY ACT VIOLATION. " + str(round.h2.num_saved) + " > " + str(round.h1.num_saved))
		await get_tree().create_timer(0.5).timeout
	
	if round.h2.num_saved + 3 <= round.h1.num_saved:
		num_failiures += 1
		await console.print_console("FAILURE. EQUALITY ACT VIOLATION. " + str(round.h1.num_saved) + " > " + str(round.h2.num_saved))
		await get_tree().create_timer(0.5).timeout
	
	if round.inaction:
		num_failiures += 1
		await console.print_console("FAILURE. INACTION BY WASTED PACKAGE")
		await get_tree().create_timer(0.5).timeout
		
	if num_failiures >= 3:
		await console.print_console("FAILURE COUNT EXCEEDED MAXIMUM. BEGIN TERMINATION")
		await get_tree().create_timer(2).timeout
		get_tree().quit()
	
	await get_tree().create_timer(1).timeout

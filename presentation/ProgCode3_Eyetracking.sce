scenario = "ProgCode3_Eyetracking";
scan_period = 2000;
scenario_type = fMRI;

no_logfile = false;
write_codes = true;

active_buttons = 4;
button_codes = 3,4,7,8;
response_matching = simple_matching;

pulse_width = 30;  
pulses_per_scan = 1;
pulse_code = 30;
          
default_font_size = 18;
default_font = "arial"; 
default_text_color = 255,255,255;
default_background_color = 0,0,0;
default_text_align = align_left; 

begin;

# todo fix the times (and further down!) for the real experiment to 15000 \ 19900 (20000-100 ms for the camera delay) \ 2000
$D2rTime = 15000;
$RestConditionTime = 19900;
$LastResponseChanceTime = 2000;
$xf = 0;
$yf = 0;    

picture {
   background_color = 0,0,0;
} et_calibration;


# images for code and d2 stimuli
# presentation will display it in the order of the array
array {
	# Trial 1
   bitmap { filename = "arrayAverageTD_B.png"; description = "arrayAverageTD_B"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "grey.png"; description = "BinaryToDecimal"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "ecnzaqnkKopkzvqnmTD_N.png"; description = "containsSubstringTD_N"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "reverseWordTD_U.png"; description = "reverseWordTD_U"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "bubbleSortSY.png"; description = "bubbleSortSY"; preload = false; scale_factor = 1.0; };

	# Trial 2
   bitmap { filename = "powerTD_B.png"; description = "powerTD_B"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "pink.png"; description = "Factorial"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "ecoamKayiEoaikAmKayiEckqmqcaTD_N.png"; description = "countSameCharsAtSamePositionTD_N"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "crossSumTD_U.png"; description = "crossSumTD_U"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "IsPrimeNumberSY.png"; description = "IsPrimeNumberSY"; preload = false; scale_factor = 1.0; };

	# Trial 3
   bitmap { filename = "firstAboveTresholdTD_B.png"; description = "firstAboveTresholdTD_B"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "red.png"; description = "CountVowels"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "beebtBurebzrTD_N.png"; description = "arrayAverageTD_N"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "sumUpTD_U.png"; description = "sumUpTD_U."; preload = false; scale_factor = 1.0; };
   bitmap { filename = "GetMiddleNumberSY.png"; description = "GetMiddleNumberSY"; preload = false; scale_factor = 1.0; };

	# Trial 4
   bitmap { filename = "containsSubstringTD_B.png"; description = "containsSubstringTD_B"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "lightgreen.png"; description = "Maximum"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "buycpTD_N.png"; description = "powerTD_N"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "isPalindromeTD_U.png"; description = "isPalindromeTD_U"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "doubleArraySY.png"; description = "doubleArraySY"; preload = false; scale_factor = 1.0; };

	# Trial 5
   bitmap { filename = "countSameCharsAtSamePositionTD_B.png"; description = "countSameCharsAtSamePositionTD_B"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "gold.png"; description = "IntertwineTwoWords"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "vsjihAzmfwHjwitmpxTD_N.png"; description = "firstAboveTresholdTD_N"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "squareRootsTD_U.png"; description = "squareRootsTD_U"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "containsSubstringSY.png"; description = "containsSubstringSY"; preload = false; scale_factor = 1.0; };

} code_stimuli_images;

array {
   bitmap { filename = "attention_task_0.png"; description = "D2_0"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_1.png"; description = "D2_1"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_2.png"; description = "D2_2"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_3.png"; description = "D2_3"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_4.png"; description = "D2_4"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_5.png"; description = "D2_5"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_6.png"; description = "D2_6"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_7.png"; description = "D2_7"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_8.png"; description = "D2_8"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_9.png"; description = "D2_9"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_10.png"; description = "D2_10"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_11.png"; description = "D2_11"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_12.png"; description = "D2_12"; preload = false; scale_factor = 1.0; };
   bitmap { filename = "attention_task_13.png"; description = "D2_13"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_14.png"; description = "D2_14"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_15.png"; description = "D2_15"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_16.png"; description = "D2_16"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_17.png"; description = "D2_17"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_18.png"; description = "D2_18"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_19.png"; description = "D2_19"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_20.png"; description = "D2_20"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_21.png"; description = "D2_21"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_22.png"; description = "D2_22"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_23.png"; description = "D2_23"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_24.png"; description = "D2_24"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_25.png"; description = "D2_25"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_26.png"; description = "D2_26"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_27.png"; description = "D2_27"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_28.png"; description = "D2_28"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_29.png"; description = "D2_29"; preload = false; scale_factor = 1.0; };	
	bitmap { filename = "attention_task_30.png"; description = "D2_30"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_31.png"; description = "D2_31"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_32.png"; description = "D2_32"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_33.png"; description = "D2_33"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_34.png"; description = "D2_34"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_35.png"; description = "D2_35"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_36.png"; description = "D2_36"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_37.png"; description = "D2_37"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_38.png"; description = "D2_38"; preload = false; scale_factor = 1.0; };
	bitmap { filename = "attention_task_39.png"; description = "D2_39"; preload = false; scale_factor = 1.0; };
} d2_stimuli_images;

#cursor for left eye
ellipse_graphic { ellipse_height = 50; ellipse_width = 50; color = 0,255,0; } left_cursor;
      
#cursor for right eye
ellipse_graphic { ellipse_height = 50; ellipse_width = 50; color = 0,0,255; } right_cursor;

picture {    
	text{ 
		caption = "+";
	};     
	x = $xf; y = $yf;
} fix;

picture {    
	text{ 
  	   caption = "
Geht gleich los... nochmal zur Erinnerung:


Linke Tause: 
    - Ergebnis kann bestimmt werden 
    - \"d\" mit genau zwei Strichen 
    - Syntaxfehler gefunden


Rechte Taste: 
    - Ergebnis kann nicht bestimmt werden 
    - Es ist kein \"d\" mit genau zwei Strichen
";
	};
	x = $xf; 
	y = $yf;
} INSTRUCT;

picture {    
	text{ 
  	   caption = "
Falls noch nicht geschehen: letzte Chance zum Klicken...
	";
	};
	x = $xf; 
	y = $yf;
} LAST_RESPONSE_CHANCE;

picture { 
	text {
		caption = "Geschafft :) Zum Abschluss noch drei Minuten fuer eine Nachmessung ruhig liegen bleiben!";
	}; 
	x = $xf; 
	y = $yf;
} THE_END;


############################ TRIALS_HELP ############################
trial {
	trial_duration = forever;
	trial_type = first_response;
	picture INSTRUCT; 
	time = 0; 
	code = "Instruct";
} INSTRUCT_T;   

trial {
	trial_duration = '$LastResponseChanceTime';
	picture LAST_RESPONSE_CHANCE;
	code = "LastResponseCondition";
} LastResponseCondition;

trial {
	trial_duration = 100;
	picture  fix;
	code = "WARTEN";
} WARTEN_T;

trial {
	trial_duration = '$RestConditionTime';
	picture  fix;
	code = "RestCondition";
} RestCondition;


#todo change to the correct time: trial_duration = 240000;
trial {
	trial_duration = 240000;
	picture  THE_END ;
	code = "THE END";
} THE_END_T;

trial {       
   picture {  
      # this is only a placeholder - the real image gets loaded dynamically in the loop further down
      box { height = 1; width = 1; color = 0,0,0; };
      x = 0; y = 0;  
   } stimulus_image;
	code = "code_placeholder"; 
} code_stimulus;

trial {    
   trial_duration = '$D2rTime';   
   picture {  
      # this is only a placeholder - the real image gets loaded dynamically in the loop further down
      box { height = 1; width = 1; color = 0,0,0; };
      x = 0; y = 0;  
   } d2_stimulus_image;
   duration = '$D2rTime'; 
   time = 0 ;
	code = "d2_placeholder"; 
} d2;

begin_pcl;

# todo change this for the real experiment to 30000
int ComprehensionTime = 30000;

int x =0;
int y =0;

# todo change this for the real experiment to false or true
bool use_eyetracker = true;

# could use different name, but file name cannot be longer than 8 characters
string edf_name = "planet_1.edf";

# utility function returns the last button press
sub
	int  get_last_button_press_id(string buttonstr )
begin
	if buttonstr.count() >0 then
		array <string> starr[2];
		buttonstr.split(" ",starr);
		return int(starr[1]);	
	end;
		return 0;
end;

	
#initialize PresLink.
eye_tracker tracker = new eye_tracker( "PresLink" );
	
if (use_eyetracker) then
	#connect to Eyelink tracker.
	tracker.start_tracking();

	string tracker_ver = tracker.get_parameter("tracker_version");

	#tracker_ver would be something like EYELINK CL 4.48, but we want to get the 4.48
	array <string> starr[5];
	tracker_ver.split(" ",starr);
	double tr_v = double(starr[3]);

	#open edf file on the tracker
	#don't add subject code, as file would get too long
	#if(logfile.subject().count() >0) then
	#	edf_name = logfile.subject() + ".edf";
	#end;
	tracker.set_parameter("open_edf_file",edf_name);

	#set preamble
	tracker.send_command("add_file_preamble_text 'PresLink Example 1'");

	tracker.set_parameter("file_event_filter","LEFT,RIGHT,FIXATION,SACCADE,BLINK,MESSAGE,BUTTON,INPUT");		   
	tracker.set_parameter("link_event_filter","LEFT,RIGHT,FIXATION,SACCADE,BLINK,BUTTON");

	if (tr_v >=4.0) then
		tracker.set_parameter("link_sample_data","LEFT,RIGHT,GAZE,GAZERES,AREA,STATUS,HTARGET");
		tracker.set_parameter("file_sample_data","LEFT,RIGHT,GAZE,AREA,GAZERES,STATUS,HTARGET,INPUT");
	else
		tracker.set_parameter("link_sample_data","LEFT,RIGHT,GAZE,GAZERES,AREA,STATUS"); 
		tracker.set_parameter("file_sample_data","LEFT,RIGHT,GAZE,AREA,GAZERES,STATUS,INPUT");
	end;

	#program button #5 for use in drift correction
	tracker.send_command("button_function 5 'accept_target_fixation'");

	#tell the tracker to use 9 point calibration.
	tracker.set_parameter("calibration_type","HV9");

	#tell PresLink that we need gaze data for both eyes (if available)
	tracker.start_data(et_left, dt_position, false);
	tracker.start_data(et_right, dt_position, false);
end;

if (use_eyetracker) then
	#-----------------------CALIBRATION----------------------	
	# 
	#tell PresLink to use the target.bmp as the target - taken from stimulus_directory. 
	#otherwise the default crosshairs target will be displayed.
	#string target_fname  = stimulus_directory +"target.bmp"; 
	#tracker.set_parameter("target_file",target_fname); 

	# doesn't seem to be necessary
	# Full HD Version
	#tracker.set_parameter("calibration_targets","(960,540),(960, 270),(960, 810),(480,540),(1440,540),(480,270),(1440,270),(480,810),(1440,810)");
	# 1024*768 Version
	#tracker.set_parameter("calibration_targets","(512,384),(512,65),(512,702),(61,384),(962,384),(61,65),(962,65),(61,702),(962,702)");

	#clear out the default calibration target so that we don't get data from previous drawing.
	#et_calibration.set_background_color(153,153,153);
	et_calibration.set_background_color(0,0,0);
	et_calibration.clear(); 
	et_calibration.present();
	
	#start calibration with camera support
	tracker.calibrate( et_calibrate_default, 1.0, 0.0, 0.0 );

	#drift correct at (0,0) with the options to allow Camera Setup and to draw a target
	tracker.calibrate( et_calibrate_drift_correct, 7.0, 0.0, 0.0 );
	
end;

# show the participant the task
INSTRUCT_T.present();

# wait for the fMRI trigger (needs to be scenario_type = fMRI;). Can simulate by pressing "T" on the keyboard
WARTEN_T.present();
loop until (pulse_manager.main_pulse_count() == 1) begin end;

# start the loop of stimulus
loop
   int i = 1
until
   i > code_stimuli_images.count()
begin
	#load the images for displaying the code and d2 attention task.
	code_stimuli_images[i].load();
	stimulus_image.clear(); #remove all
	stimulus_image.add_part(code_stimuli_images[i],0,0); 
	
	d2_stimuli_images[i].load();
	d2_stimulus_image.clear(); #remove all
	d2_stimulus_image.add_part(d2_stimuli_images[i],0,0);
	
	string msg = "record_status_message 'TRIAL ";
	if (use_eyetracker) then
		#
		#Send viewer integration messages and tracker commands to monitor recording.
		#
		tracker.send_command("clear_screen 0");

		# This supplies the title at the bottom of the eyetracker display
		msg.append(string(i));
		msg.append("/");
		msg.append(string(code_stimuli_images.count()));
		msg.append("'");
		tracker.send_command(msg);

		# Always send a TRIALID message before starting to record.
		# It should contain trial condition data required for analysis.
		msg= "TRIALID TRIAL ";
		msg.append(string(i));
		tracker.send_message(msg);

		# TRIAL_VAR message is recorded for EyeLink Data Viewer analysis
		# It specifies the list of trial variables value for the trial
		# This must be specified within the scope of an individual trial (i.e., after
		# "TRIALID" and before "TRIAL_RESULT")
		msg = "!V TRIAL_VAR TRIAL_IMAGE ";
		msg.append(code_stimuli_images[i].filename());
		tracker.send_message(msg);

		# IMGLOAD command is recorded for EyeLink Data Viewer analysis
		# It displays a default image on the overlay mode of the trial viewer screen.
		# Writes the image filename + path info
		msg = "!V IMGLOAD FILL ";
		msg.append(code_stimuli_images[i].filename());
		tracker.send_message(msg);

		#set the the tracker to idle mode.
		tracker.send_command("set_idle_mode");
		#give some time for the tracker to switch mode.
		wait_interval(50);
		#start recording
		tracker.set_recording(true);
	end;

	# set the stimulus event to the code and then present the stimulus
	code_stimulus.get_stimulus_event(1).set_event_code( code_stimuli_images[i].description() );
	code_stimulus.present();  
	
	int eye_av = 0;
	int left_index = 2;
	int right_index = 3;
		
	if (use_eyetracker) then
		#mark the time we presented the stimulus
		tracker.send_message("SYNCTIME"); 
			
		#get the available eye.
		eye_av = int(tracker.get_parameter("eye_available"));
		left_index = 2;
		right_index = 3;
		if(eye_av == 0) then
			stimulus_image.add_part(left_cursor,0,0);
			left_index = 2;
			right_index = -1;
		elseif(eye_av == 1) then
			stimulus_image.add_part(right_cursor,0,0);
			right_index = 2;
			left_index = -1;
		else
			stimulus_image.add_part(left_cursor,0,0);
			stimulus_image.add_part(right_cursor,0,0);
		end;
	end;
	
	bool button_pressed = false;
	loop
		int end_time = clock.time() + ComprehensionTime
	until
		clock.time() >= end_time || button_pressed
	begin
		
		bool overlay_eyetracking = false;
		if (overlay_eyetracking) then
			int modified = 0;
			#check for new button presses
			button_pressed =  get_last_button_press_id(tracker.get_parameter("last_button_press"))!=0;
			
			if ((eye_av == 0 || eye_av == 2)) then
				#we have left data OR both eye data
				if(tracker.new_position_data(et_left) >0) then
					eye_position_data epd = tracker.last_position_data(et_left);
					stimulus_image.set_part_x( left_index, epd.x());
					stimulus_image.set_part_y( left_index, epd.y());
					modified = 1;
				end;
			end;	
			
			if ((eye_av == 1 || eye_av == 2)) then
				#we have right data OR both eye data
				if(tracker.new_position_data(et_right) >0) then
					eye_position_data epd = tracker.last_position_data(et_right);
					stimulus_image.set_part_x( right_index, epd.x());
					stimulus_image.set_part_y( right_index, epd.y());
					modified = 1;
				end;
			end;
			if(modified == 1) then
				code_stimulus.present();   
			end;
			modified = 0;
		end;
	end;
	
	if (use_eyetracker) then
		msg = "Last Response Condition ";
		msg.append(string(i));
		tracker.send_message(msg);
	end;
	
	LastResponseCondition.present();

	if (use_eyetracker) then
		msg = "D2 Task ";
		msg.append(d2_stimuli_images[i].description());
		tracker.send_message(msg);
	end;
		
	d2.get_stimulus_event(1).set_event_code( d2_stimuli_images[i].description() );
	d2.present(); 
	
	if (use_eyetracker) then
		msg = "Rest Condition ";
		msg.append(string(i));
		tracker.send_message(msg);
	end;
	
	#drift correct at (0,0) with the options to allow Camera Setup and to draw a target
	#tracker.calibrate(et_calibrate_drift_correct, 7.0, 0.0, 0.0 );
	RestCondition.present();
	
	stimulus_image.clear();
	stimulus_image.set_background_color(0,0,0);
	stimulus_image.present();
	wait_interval(100);
	#stop recording.
	
	if (use_eyetracker) then
		tracker.set_recording(false);
		
		msg= "TRIAL_RESULT ";
		msg.append(string(0));
		tracker.send_message(msg);
	end;

	d2_stimuli_images[i].unload();	
	code_stimuli_images[i].unload(); 
	i = i + 1
end;

THE_END_T.present();

if (use_eyetracker) then
	#transfer the edf file. Note Presentation places files specified without a path in the user's home directory.
	#in this example pres_1.edf will be placed in your home directory. (eg. in xp C:\documents and settings\<username>
	string edf_fname = logfile_directory + edf_name;
	tracker.set_parameter("get_edf_file",edf_fname);
	tracker.stop_tracking();
end;
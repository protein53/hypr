# hypr

This is just a wish-list of features.
1. Use the idea of Leap.vim as starting point.
   Super-s - similar to Leap's search. All visible windows are marked with a single letter. All workspaces are also marked with single letter. If you ran out of letter, space is shown instead and pressing space would fill up
   with letter and if you still have space, continue pressing space until you get a letter. If you overshoot, press backspace to go back. Workspace icons at the top bar are marked as well.
   ##Navigation mode - Super-s
   ### Will show large single letter marks at each window at the current workspace and single letter marks at each workspace icon at the top bar, similar to leap.vim. At this point, it is waiting for you to type the letter corresponding to the marks.
   - if the letter you press (after initially pressing Super-s) is inside a window, that window gets into focus and you are back to normal
   - if the letter is at workspace icon, it brings you to that workspace and windows on that workspace are again marked. You then select the letter of the target window, it focuses on that window, and you are back to normal.
   - if you press a letter at workspace icon, it goes to that workspace and if next letter is still at workspace icon, it goes to that workspace. It does not stop from jumping from one workspace to the next for as long as you are pressing letters at workspace icons. It only stops when you finally select a windows letter.
   - if you press ESC anytime, it goes back to normal and back to the focused window prior to pressing Super-s

   ##Move Mode - Super-m
   ###visible windows and worspaces are marked with letter. Sequence is you select all marked windows of interest, then select an action which are either
    - y = yank --> the window remain at this workspace. If you select a workspace letter next, it goes to that workspace, typing 'p' = paste, places a copy of those windows at this workspace. Windows are re-marked and goes to Navigation mode
   - x = delete --> closes these windows at current workspace. This is pending action. You could select mark at workspace which brings you to that workspace, and type 'p' = paste, which paste you previously deleted windows here. This is equivalent to moving your windows from one workspace to the other. Windows are re-marked with new letters and goes to Navigation mode
   - x = delete --> closes these windows at current workspace. If you press Enter, you just confirmed that you want to close these windows. Windows are then re-marked and goes to Navigation mode
   - j/k/l/h - moves that window consistent with vim movement.

Preconditions:
##############

- each scenario starts on a full state reset (i.e. reloading the save)

Case 1, infinite interrupt:
===========================

Scenario a:
-----------

- Click play on 'Case1-Stop1'

Expected behaviour:

- 'Case1-InterruptStop1' is at the top of the schedule, and stays stuck.

Scenario b:
-----------

- Click play on 'Case1-Stop2'

Expected behaviour:

- 'Case1-InterruptStop1' is inserted between 'Case1-Stop1' and 'Case1-Stop2', and stays stuck on 'Case1-InterruptStop1'.

Scenario c:
-----------

- Click play on 'Case1-Stop1'
- Click play on 'Case1-Stop1' again

Expected behaviour:

- Caravan goes to 'Case1-Stop1', then 'Case1-Stop2', then on 'Case1-InterruptStop1', and stays stuck.

Scenario d:
-----------

- Click play on 'Case1-Stop1'
- Click play on 'Case1-Stop1' again
- Delete 'Case1-InterruptStop1'

Expected behaviour:

- Caravan goes to Case1-Stop1
- 'Case1-InterruptStop1' is inserted between 'Case1-Stop1' and 'Case1-Stop2', and stays stuck.

Scenario e:
-----------

- Click play on 'Case1-Stop1'
- Delete 'Case1-InterruptStop1'

Expected behaviour:

- Caravan goes to 'Case1-Stop1'
- 'Case1-InterruptStop1' is inserted between 'Case1-Stop1' and 'Case1-Stop2'.
- Caravan goes to 'Case1-InterruptStop1' and stays stuck.

Scenario f:
-----------

- Click play on 'Case1-Stop1'
- Drag 'Case1-InterruptStop1' to the bottom of the schedule.

Expected behaviour:

- After 5s, 'Case1-InterruptStop1' goes to the top of the schedule, and stays stuck.

Scenario g:
-----------

- Click play on 'Case1-Interrupt1'

Expected behaviour:

- 'Case1-InterruptStop1' is inserted between 'Case1-Stop1' and 'Case1-Stop2', and stays stuck.

Scenario h:
-----------

- Click play on 'Case1-Stop1'
- Click play on 'Case1-Stop1' again
- Click play on 'Case1-Stop1' yet again (to pause the schedule)
- Click play on 'Case1-Interrupt1'

Expected behaviour:

- 'Case1-InterruptStop1' is inserted between 'Case1-Stop1' and 'Case1-Stop2'.

Scenario i:
-----------

- Click play on 'Case1-Stop2'
- Click play on 'Case1-Stop2' again
- Click play on 'Case1-Stop2' yet again (to pause the schedule)
- Click play on 'Case1-Interrupt1'

Expected behaviour:

- 'Case1-InterruptStop1' stays in-place and is stuck.

Scenario j:
-----------

- Edit 'Case1-Interrupt1'
- Remove all targets
- Save interrupt
- Click play on 'Case1-Stop1'

Expected behaviour:

- Caravan goes to 'Case1-Stop1'
- Caravan goes to 'Case1-Stop2'
- Repeats above steps

Scenario k:
-----------

- Edit 'Case1-Interrupt1'
- Remove all targets
- Save interrupt
- Click play on 'Case1-Interrupt1'

Expected behaviour:

- Nothing happens

Scenario l:
-----------

- Edit interrupt 'Case1-Interrupt1'
- Toggle 'Allow interrupting other interrupts' checkbox.
- Save interrupt
- Click play on 'Case1-Stop1'
- Click play on 'Case1-Stop1' again

Expected behaviour:

- Caravan goes to 'Case1-Stop1'
- 'Case1-InterruptStop1' is inserted between 'Case1-Stop1' and 'Case1-Stop2', and stays stuck on 'Case1-InterruptStop1'.

Scenario m:
-----------

- Edit interrupt 'Case1-Interrupt1'
- Toggle 'Allow interrupting other interrupts' checkbox.
- Save interrupt
- Click play on 'Case1-Stop1'
- Click play on 'Case1-Stop2'

Expected behaviour:

- Caravan goes to 'Case1-Stop2'
- 'Case1-InterruptStop1' is inserted at the bottom of the schedule, triggers once, moves to the top of the schedule, and stays stuck.

Scenario n:
-----------

- Click play on 'Case1-Stop1'
- Click play on 'Case1-Interrupt1'

Expected behaviour:

- 'Case1-InterruptStop1' stays at the same place in the schedule
- Caravan goes to 'Case1-InterruptStop1' and stays stuck.

Scenario o:
-----------

- Click play on 'Case1-Stop2'
- Click play on 'Case1-Interrupt1'

Expected behaviour:

- 'Case1-InterruptStop1' stays at the same place in the schedule
- Caravan goes to 'Case1-InterruptStop1' and stays stuck.

Scenario p:
-----------

- Click play on 'Case1-Stop2'
- Click play on 'Case1-Stop2' again
- Click play on 'Case1-Interrupt1'

Expected behaviour:

- 'Case1-InterruptStop1' moves at the bottom of the schedule, executes once, moves to the top of the schedule and stays stuck.

Scenario q:
-----------

Linked to https://github.com/pyanodon/pyalienlife/pull/378

- Edit interrupt 'Case1-Interrupt1'
- Replace the condition by 'Target item count', with default values.
- Click play on 'Case1-Stop1'

Expected behaviour:

- Caravan cycles between 'Case1-Stop1' and 'Case1-Stop2'. The interrupt is never triggered.
- The game doesn't crash

Case 2, finite interrupt with one destination:
==============================================

Scenario a:
-----------

- Click play on 'Case2-Stop1'

Expected behaviour:

- Caravan goes to 'Case2-Stop1'
- Caravan goes to 'Case2-Stop2'
- 'Case2-InterruptStop1' is inserted at the bottom of the schedule
- Caravan goes to 'Case2-InterruptStop1'
- 'Case2-InterruptStop1' is deleted from the schedule
- Repeats previous steps

Scenario b:
-----------

- Click play on 'Case2-Interrupt1'

Expected behaviour:

- 'Case2-InterruptStop1' is inserted between 'Case2-Stop1' and 'Case2-Stop2'
- Caravan goes to 'Case2-InterruptStop1'
- 'Case2-InterruptStop1' is deleted from the schedule
- Caravan goes to 'Case2-Stop2'
- 'Case2-InterruptStop1' is inserted at the bottom of the schedule
- Caravan goes to 'Case2-InterruptStop1'
- 'Case2-InterruptStop1' is deleted from the schedule
- Repeats Scenario a

Scenario c:
-----------

- Click play on 'Case2-Interrupt1'
- Click play on 'Case2-Stop2'

Expected behaviour:

- Caravan goes to 'Case2-Stop2', then on 'Case2-Stop1', then on 'Case2-InterruptStop1'
- 'Case2-InterruptStop1' is deleted from the schedule
- Caravan goes to 'Case2-Stop2'
- 'Case2-InterruptStop1' is inserted at the bottom of the schedule
- Caravan goes to 'Case2-InterruptStop1'
- 'Case2-InterruptStop1' is deleted from the schedule
- Repeats Scenario a

Scenario d:
-----------

- Click play on 'Case2-Interrupt1'
- Click play on 'Case2-Stop2'
- Click play on 'Case2-Interrupt1'

Expected behaviour:

- 'Case2-InterruptStop1' is moved at the bottom of the schedule
- Caravan goes to 'Case2-InterruptStop1'
- 'Case2-InterruptStop1' is deleted from the schedule
- Caravan goes to 'Case2-Stop1'
- Repeats Scenario a

Scenario e:
-----------

- Edit 'Case2-Interrupt1'
- Toggle 'Allow interrupting other interrupts' checkbox.
- Save interrupt
- Click play on 'Case2-Interrupt1'
- Click play on 'Case2-Stop2'

Expected behaviour:

- Caravan goes to 'Case2-Stop2'
- 'Case2-InterruptStop1' is moved at the bottom of the schedule
- Caravan goes to 'Case2-InterruptStop1'
- 'Case2-InterruptStop1' is deleted from the schedule
- Caravan goes to 'Case2-Stop1'
- Repeats Scenario a

Case 3, two finite interrupts
=============================

Scenario a:
-----------

- Click play on 'Case3-Stop1'

Expected behaviour:

- Caravan goes to 'Case3-Stop1'
- Caravan goes to 'Case3-Stop2'
- 'Case3-InterruptStop1' and 'Case3-InterruptStop2' are inserted at the bottom of the schedule
- Caravan goes to 'Case3-InterruptStop1'
- 'Case3-InterruptStop1' is deleted from the schedule
- Caravan goes to 'Case3-InterruptStop2'
- 'Case3-InterruptStop2' is deleted from the schedule
- Repeat above steps

Scenario b:
-----------

- Click play on 'Case3-Stop1'
- Wait for caravan to leave 'Case3-InterruptStop1'
- Click play on 'Case3-Interrupt1'

Expected behaviour:

- 'Case3-InterruptStop2' is replaced by 'Case3-InterruptStop1' and 'Case3-InterruptStop2'
- Caravan goes to 'Case3-InterruptStop1'
- Caravan goes to 'Case3-InterruptStop2'
- Caravan goes to 'Case3-Stop1'
- Repeats Scenario a

Scenario c:
-----------

- Edit 'Case3-Interrupt2'
- Toggle 'Allow interrupting other interrupts' checkbox.
- Save interrupt
- Click play on 'Case3-Stop1'

Expected behaviour:

- Caravan goes to 'Case3-Stop1'
- Caravan goes to 'Case3-Stop2'
- 'Case3-InterruptStop1' and 'Case3-InterruptStop2' are inserted at the bottom of the schedule
- Caravan goes to 'Case3-InterruptStop1'
- 'Case3-InterruptStop2' is replaced by 'Case3-InterruptStop3'
- Caravan goes to 'Case3-InterruptStop3'
- 'Case3-InterruptStop3' is deleted from the schedule
- Caravan goes to 'Case3-Stop1'
- Repeats above steps

Case 4, no schedule
===================

Scenario a
----------

- Click play on 'Case4-Interrupt1'

Expected behaviour:

- 'Case4-InterruptStop1' is the only destination in the schedule
- Caravan goes to 'Case4-InterruptStop1'
- 'Case4-InterruptStop1' is deleted from the schedule
- Caravan is idle

Case 5, 1 interrupt with AND/OR conditions
=============================================

Scenario a
----------

- Click play on 'Case5-Stop1'

Expected behaviour:

- Caravan goes to 'Case5-Stop1'
- 'Case5-InterruptStop1' is inserted between 'Case5-Stop1' and 'Case5-Stop2'
- Caravan goes to 'Case5-InterruptStop1'
- 'Case5-InterruptStop1' is deleted from the schedule.
- Caravan goes to 'Case5-Stop2'
- 'Case5-InterruptStop1' is inserted at the bottom of the schedule.
- Caravan goes to 'Case5-InterruptStop1'
- 'Case5-InterruptStop1' is deleted from the schedule.
- Repeat above steps

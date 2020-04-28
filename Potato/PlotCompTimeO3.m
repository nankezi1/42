N = [2 3 4 5 6 8 10 12 15 18 20]';
TotalTime = [2.30 152.70;
             169.40]';


% MapTime is O(N)
MapTime = [0.185107 0.325092 0.472086 0.595644 0.740646 1.016067 1.310048 1.589734 2.058487 2.534695 2.971889]'; 

% JointTime is O(N)
JointTime = [0.033315 0.055469 0.074380 0.093842 0.113936 0.154899 0.191942 0.234345 0.297095 0.359362 0.412473]';

% PathTime is O(N^2)
PathTime = [0.054031 0.107892 0.178157 0.256358 0.358166 0.619452 0.959720 1.360651 2.158925 3.141177 3.962898]';

% PVelTime is O(N^2)
PVelTime = [0.262269 0.692557 1.299815 2.057544 2.961441 5.343206 8.436298 12.333756 19.731081 28.614168 36.246986]';

% FrcTrqTime is O(N)
FrcTrqTime = [0.200418 0.354503 0.505949 0.655746 0.809949 1.109577 1.417938 1.714138 2.214204 2.710497 3.113801]';

% AssembleTime is O(N^3)
AssembleTime = [1.079479 2.555301 5.030004 8.530495 13.563501 28.794083 52.667189 86.889917 165.302635 278.582659 400.247767]';

% TriangleTime is O(N^2)
TriangleTime = [0.585777 1.252379 2.304190 3.733625 5.811139 11.915600 21.253942 34.660515 65.013462 110.078878 151.356961]';

% SubstTime is O(N) to O(N^2)
SubstTime = [0.384926 0.534921 0.698081 0.853467 1.041777 1.466524 1.944573 2.502569 3.533749 4.738591 5.973177]';

% SolveTime is O(N^3) for both methods
SolveTime = [;
             ]';

figure(1)
plot(N,[MapTime JointTime PathTime PVelTime FrcTrqTime AssembleTime TriangleTime SubstTime SolveTime TotalTime])
legend('Map','Joint','Path','PVel','Frc','Assemble','Triangle','Fwd Subst','Solve Lin','Solve ON','Total Lin','Total ON')
xlabel('Nbody')
ylabel('sec')

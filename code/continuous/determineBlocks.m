%
%determines the blocksize and how many of those are to be processed, based on the raw number of samples available in
%the file
%
%
function [nrRuns, blocksize] = determineBlocks( totNrSamples, blocksize )
if nargin<2
    blocksize=512000;
end

% nrRuns = fix( totNrSamples/ blocksize ) + 1;
if floor(totNrSamples/blocksize) == totNrSamples/ blocksize
    nrRuns = totNrSamples/ blocksize;
else
    nrRuns = floor( totNrSamples/ blocksize ) + 1;
end



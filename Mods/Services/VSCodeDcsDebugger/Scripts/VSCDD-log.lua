
VLog = {}

VLog.Identifier = 'VSCodeDcsDebugger'

function VLog.Info(msg)
    log.write(VLog.Identifier, log.INFO, msg)
end

function VLog.Error(msg)
    log.write(VLog.Identifier, log.ERROR, msg)
end

return VLog
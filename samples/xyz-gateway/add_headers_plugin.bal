import ballerinax/gateway;
import ballerina/log;

const PLUGIN_ID_ADD_HEADERS = "AddHeadersPlugin";

public isolated class AddHeadersPlugin {
    *gateway:Plugin;
    private final gateway:PluginConfig pluginConfig;

    public function init(gateway:PluginConfig pluginConfig) returns error? {
        self.pluginConfig = pluginConfig;
        // Validate the config
    }

    public isolated function processRequest(gateway:RequestPluginContext pluginCtx) returns gateway:PluginStatus {
        log:printDebug("Plugin processRequest invoked", plugin = PLUGIN_ID_ADD_HEADERS);
        return gateway:PLUGIN_STATUS_CONTINUE;
    }

    public isolated function processResponse(gateway:ResponsePluginContext pluginCtx) returns gateway:PluginStatus {
        log:printDebug("Plugin processResponse invoked", plugin = PLUGIN_ID_ADD_HEADERS);        
        return gateway:PLUGIN_STATUS_CONTINUE;
    }
}
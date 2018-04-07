package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;
import com.gameanalytics.sdk.*;
import org.json.JSONArray;
import org.json.JSONException;
import java.util.ArrayList;

public class GameAnalyticsExt
{
    public void configureAvailableCustomDimensions01(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions01(list.toArray(new String[0]));
    }

    public void configureAvailableCustomDimensions02(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions02(list.toArray(new String[0]));
    }

    public void configureAvailableCustomDimensions03(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableCustomDimensions03(list.toArray(new String[0]));
    }

    public void configureAvailableResourceCurrencies(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableResourceCurrencies(list.toArray(new String[0]));
    }

    public void configureAvailableResourceItemTypes(String json)
    {
        ArrayList<String> list = new ArrayList<String>();

        try
        {
            JSONArray jsonArray = new JSONArray(json);
            for(int i = 0; i < jsonArray.length(); ++i)
            {
                list.add(jsonArray.getString(i));
            }
        }
        catch (JSONException e)
        {
        }

        GameAnalytics.configureAvailableResourceItemTypes(list.toArray(new String[0]));
    }

    public void configureBuild(String build)
    {
        GameAnalytics.configureBuild(build);
    }

    public void configureSdkGameEngineVersion(String version)
    {
        GameAnalytics.configureSdkGameEngineVersion(version);
    }

    public void configureGameEngineVersion(String version)
    {
        GameAnalytics.configureGameEngineVersion(version);
    }

    public void configureUserId(String id)
    {
        GameAnalytics.configureUserId(id);
    }

    public void initialize(String gameKey, String gameSecret)
    {
        GameAnalytics.initializeWithGameKey(RunnerActivity.CurrentActivity, gameKey, gameSecret);
    }

    public void addBusinessEvent(String currency, double amount, String itemType, String itemId, String cartType)
    {
        GameAnalytics.addBusinessEventWithCurrency(currency, (int)Math.round(amount), itemType, itemId, cartType);
    }

    public void addBusinessEventWithReceipt(String currency, double amount, String itemType, String itemId, String cartType, String receipt, String store, String signature)
    {
        GameAnalytics.addBusinessEventWithCurrency(currency, (int)Math.round(amount), itemType, itemId, cartType, receipt, store, signature);
    }

    public void addResourceEvent(double flowType, String currency, double amount, String itemType, String itemId)
    {
        GameAnalytics.addResourceEventWithFlowType((int)Math.round(flowType), currency, (float)amount, itemType, itemId);
    }

    public void addProgressionEvent(double status, String progression1, String progression2, String progression3)
    {
        GameAnalytics.addProgressionEventWithProgressionStatus((int)Math.round(status), progression1, progression2, progression3);
    }

    public void addProgressionEventWithScore(double status, String progression1, String progression2, String progression3, double score)
    {
        GameAnalytics.addProgressionEventWithProgressionStatus((int)Math.round(status), progression1, progression2, progression3, score);
    }

    public void addDesignEvent(String eventId)
    {
        GameAnalytics.addDesignEventWithEventId(eventId);
    }

    public void addDesignEventWithValue(String eventId, double value)
    {
        GameAnalytics.addDesignEventWithEventId(eventId, value);
    }

    public void addErrorEvent(double severity, String message)
    {
        GameAnalytics.addErrorEventWithSeverity((int)Math.round(severity), message);
    }

    public void setEnabledInfoLog(double flag)
    {
        GameAnalytics.setEnabledInfoLog(flag != 0.0);
    }

    public void setEnabledVerboseLog(double flag)
    {
        GameAnalytics.setEnabledVerboseLog(flag != 0.0);
    }

    public void setEnabledManualSessionHandling(double flag)
    {
        GameAnalytics.setEnabledManualSessionHandling(flag != 0.0);
    }

    public void setCustomDimension01(String dimension)
    {
        GameAnalytics.setCustomDimension01(dimension);
    }

    public void setCustomDimension02(String dimension)
    {
        GameAnalytics.setCustomDimension02(dimension);
    }

    public void setCustomDimension03(String dimension)
    {
        GameAnalytics.setCustomDimension03(dimension);
    }

    public void setFacebookId(String id)
    {
        GameAnalytics.setFacebookId(id);
    }

    public void setGender(double gender)
    {
        GameAnalytics.setGender((int)gender);
    }

    public void setBirthYear(double year)
    {
        GameAnalytics.setBirthYear((int)year);
    }

    public void startSession()
    {
        GameAnalytics.startSession();
    }

    public void endSession()
    {
        GameAnalytics.endSession();
    }
}

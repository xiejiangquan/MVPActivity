package ${packageName};

import com.ss.android.callback.CallbackManager;

public class ${mName} implements ${iContractName}.IModel{

	public static final String TAG = "${mName}";

	private Delegate mModelDelegate;

    protected CallbackManager mCallbackManager = new CallbackManager();

    protected CallbackManager getCallbackManager() {
        return mCallbackManager;
    }

    /**
     * 初始化
     */
    @Override
    public void create() {

    }

    @Override
    public void destroy() {
        mCallbackManager.cancelCallbacks();
    }

    @Override
    public void setModelDelegate(Delegate modelDelegate) {
        mModelDelegate = modelDelegate;
    }
}
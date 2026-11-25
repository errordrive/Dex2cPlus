package com.dex2c.plus.ui;

import android.app.Dialog;
import android.text.Editable;
import android.view.View;
import com.dex2c.plus.MainActivity;
import com.dex2c.plus.databinding.DialogCustomInputBinding;
import com.dex2c.plus.model.ProjectState;

public class UrlPromptOkListener implements View.OnClickListener {
    private final MainActivity activity;
    private final Dialog dialog;
    private final DialogCustomInputBinding binding;
    private final ProjectState state;

    public UrlPromptOkListener(MainActivity activity, Dialog dialog, DialogCustomInputBinding binding, ProjectState state) {
        this.activity = activity;
        this.dialog = dialog;
        this.binding = binding;
        this.state = state;
    }

    @Override
    public void onClick(View v) {
        if (binding != null && binding.etCustomInputValue != null) {
            Editable text = binding.etCustomInputValue.getText();
            String url = (text != null) ? text.toString().trim() : "";
            if (state != null) {
                state.remoteControlUrl = url;
                if (activity != null) {
                    state.savePrefs(activity);
                }
            }
        }
        if (dialog != null) {
            dialog.dismiss();
        }
    }
}

package com.dex2c.plus.ui;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.dex2c.plus.R;
import com.dex2c.plus.databinding.ActivityAcknowledgementBinding;
import com.dex2c.plus.model.ProjectState;

/* JADX INFO: loaded from: classes.dex */
public class AcknowledgementActivity extends AppCompatActivity {
    private ActivityAcknowledgementBinding binding;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ProjectState.applyThemeMode(ProjectState.getThemeMode(this));
        super.onCreate(bundle);
        ActivityAcknowledgementBinding activityAcknowledgementBindingInflate = ActivityAcknowledgementBinding.inflate(getLayoutInflater());
        this.binding = activityAcknowledgementBindingInflate;
        setContentView(activityAcknowledgementBindingInflate.getRoot());
        UiAnimator.applySeamlessDecorView(this, this.binding.headerAcknowledgement, this.binding.rootAcknowledgement, R.color.md_theme_headerSurface, R.color.md_theme_surfaceContainer);
        UiAnimator.attachPersistentDrawablePress(this.binding.btnAckBack);
        this.binding.btnAckBack.setOnClickListener(new View.OnClickListener() { // from class: com.dex2c.plus.ui.AcknowledgementActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$0(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view) {
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        this.binding = null;
        super.onDestroy();
    }
}

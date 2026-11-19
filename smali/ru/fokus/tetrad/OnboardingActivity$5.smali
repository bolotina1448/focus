.class Lru/fokus/tetrad/OnboardingActivity$5;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/OnboardingActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/OnboardingActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/OnboardingActivity;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0}, Lru/fokus/tetrad/OnboardingActivity;->access$600(Lru/fokus/tetrad/OnboardingActivity;)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v1}, Lru/fokus/tetrad/OnboardingActivity;->access$700(Lru/fokus/tetrad/OnboardingActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$802(Lru/fokus/tetrad/OnboardingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0}, Lru/fokus/tetrad/OnboardingActivity;->access$400(Lru/fokus/tetrad/OnboardingActivity;)V

    .line 161
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0}, Lru/fokus/tetrad/OnboardingActivity;->access$100(Lru/fokus/tetrad/OnboardingActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u0412 \u0431\u0443\u0444\u0435\u0440\u0435 \u043d\u0435\u0442 \u043a\u043b\u044e\u0447\u0430. \u0421\u043a\u043e\u043f\u0438\u0440\u0443\u0439 API-\u043a\u043b\u044e\u0447 \u043d\u0430 \u0441\u0430\u0439\u0442\u0435 Z.ai."

    :goto_1
    invoke-static {v1, v0}, Lru/fokus/tetrad/OnboardingActivity;->access$802(Lru/fokus/tetrad/OnboardingActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$5;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$902(Lru/fokus/tetrad/OnboardingActivity;Z)Z

    goto :goto_0

    :cond_1
    const-string v0, "\u0412 \u0431\u0443\u0444\u0435\u0440\u0435 \u043d\u0435\u0442 \u043a\u043b\u044e\u0447\u0430. \u0421\u043a\u043e\u043f\u0438\u0440\u0443\u0439 \u00ab\u041a\u043b\u044e\u0447 \u0430\u0432\u0442\u043e\u0440\u0438\u0437\u0430\u0446\u0438\u0438\u00bb \u0432 \u043a\u0430\u0431\u0438\u043d\u0435\u0442\u0435 GigaChat."

    goto :goto_1
.end method

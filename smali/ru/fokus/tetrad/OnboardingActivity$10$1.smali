.class Lru/fokus/tetrad/OnboardingActivity$10$1;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/OnboardingActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/fokus/tetrad/OnboardingActivity$10;

.field final synthetic val$fm:Ljava/lang/String;

.field final synthetic val$fok:Z


# direct methods
.method constructor <init>(Lru/fokus/tetrad/OnboardingActivity$10;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->this$1:Lru/fokus/tetrad/OnboardingActivity$10;

    iput-object p2, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->val$fm:Ljava/lang/String;

    iput-boolean p3, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->val$fok:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->this$1:Lru/fokus/tetrad/OnboardingActivity$10;

    iget-object v0, v0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$1302(Lru/fokus/tetrad/OnboardingActivity;Z)Z

    .line 216
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->this$1:Lru/fokus/tetrad/OnboardingActivity$10;

    iget-object v0, v0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    iget-object v1, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->val$fm:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$802(Lru/fokus/tetrad/OnboardingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->this$1:Lru/fokus/tetrad/OnboardingActivity$10;

    iget-object v0, v0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    iget-boolean v1, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->val$fok:Z

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$902(Lru/fokus/tetrad/OnboardingActivity;Z)Z

    .line 218
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->this$1:Lru/fokus/tetrad/OnboardingActivity$10;

    iget-object v0, v0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0}, Lru/fokus/tetrad/OnboardingActivity;->access$400(Lru/fokus/tetrad/OnboardingActivity;)V

    .line 219
    iget-boolean v0, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->val$fok:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$10$1;->this$1:Lru/fokus/tetrad/OnboardingActivity$10;

    iget-object v0, v0, Lru/fokus/tetrad/OnboardingActivity$10;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0}, Lru/fokus/tetrad/OnboardingActivity;->access$1400(Lru/fokus/tetrad/OnboardingActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lru/fokus/tetrad/OnboardingActivity$10$1$1;

    invoke-direct {v1, p0}, Lru/fokus/tetrad/OnboardingActivity$10$1$1;-><init>(Lru/fokus/tetrad/OnboardingActivity$10$1;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_0
    return-void
.end method

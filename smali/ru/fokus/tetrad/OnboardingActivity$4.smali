.class Lru/fokus/tetrad/OnboardingActivity$4;
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
    .line 136
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity$4;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 137
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$4;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$102(Lru/fokus/tetrad/OnboardingActivity;Z)Z

    .line 138
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$4;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$202(Lru/fokus/tetrad/OnboardingActivity;I)I

    .line 139
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$4;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$302(Lru/fokus/tetrad/OnboardingActivity;Z)Z

    .line 140
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$4;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lru/fokus/tetrad/OnboardingActivity$4;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v3}, Lru/fokus/tetrad/OnboardingActivity;->access$500(Lru/fokus/tetrad/OnboardingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

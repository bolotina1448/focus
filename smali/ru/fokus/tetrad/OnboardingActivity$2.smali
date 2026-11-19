.class Lru/fokus/tetrad/OnboardingActivity$2;
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
    .line 117
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity$2;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$2;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0, v2}, Lru/fokus/tetrad/OnboardingActivity;->access$102(Lru/fokus/tetrad/OnboardingActivity;Z)Z

    .line 119
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$2;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$202(Lru/fokus/tetrad/OnboardingActivity;I)I

    .line 120
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$2;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0, v2}, Lru/fokus/tetrad/OnboardingActivity;->access$302(Lru/fokus/tetrad/OnboardingActivity;Z)Z

    .line 121
    :try_start_0
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$2;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://developers.sber.ru/studio"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

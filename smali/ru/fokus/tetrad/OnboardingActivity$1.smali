.class Lru/fokus/tetrad/OnboardingActivity$1;
.super Ljava/lang/Object;
.source "OnboardingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/OnboardingActivity;->onResume()V
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
    .line 59
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity$1;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$1;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0}, Lru/fokus/tetrad/OnboardingActivity;->access$000(Lru/fokus/tetrad/OnboardingActivity;)V

    return-void
.end method

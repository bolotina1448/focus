.class Lru/fokus/tetrad/OnboardingActivity$8;
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
    .line 185
    iput-object p1, p0, Lru/fokus/tetrad/OnboardingActivity$8;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$8;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lru/fokus/tetrad/OnboardingActivity;->access$202(Lru/fokus/tetrad/OnboardingActivity;I)I

    iget-object v0, p0, Lru/fokus/tetrad/OnboardingActivity$8;->this$0:Lru/fokus/tetrad/OnboardingActivity;

    invoke-static {v0}, Lru/fokus/tetrad/OnboardingActivity;->access$400(Lru/fokus/tetrad/OnboardingActivity;)V

    return-void
.end method

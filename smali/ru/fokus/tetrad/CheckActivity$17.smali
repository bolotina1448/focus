.class Lru/fokus/tetrad/CheckActivity$17;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->send(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$17;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$17;->this$0:Lru/fokus/tetrad/CheckActivity;

    invoke-static {v0}, Lru/fokus/tetrad/CheckActivity;->access$700(Lru/fokus/tetrad/CheckActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

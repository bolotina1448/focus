.class Lru/fokus/tetrad/CheckState$1;
.super Ljava/lang/Object;
.source "CheckState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckState;->notifyUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckState;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckState;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lru/fokus/tetrad/CheckState$1;->this$0:Lru/fokus/tetrad/CheckState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$1;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->listener:Lru/fokus/tetrad/CheckState$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$1;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->listener:Lru/fokus/tetrad/CheckState$Listener;

    invoke-interface {v0}, Lru/fokus/tetrad/CheckState$Listener;->onCheckChanged()V

    :cond_0
    return-void
.end method

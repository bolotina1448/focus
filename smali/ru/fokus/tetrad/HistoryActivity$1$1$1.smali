.class Lru/fokus/tetrad/HistoryActivity$1$1$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/HistoryActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lru/fokus/tetrad/HistoryActivity$1$1;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/HistoryActivity$1$1;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lru/fokus/tetrad/HistoryActivity$1$1$1;->this$2:Lru/fokus/tetrad/HistoryActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity$1$1$1;->this$2:Lru/fokus/tetrad/HistoryActivity$1$1;

    iget-object v0, v0, Lru/fokus/tetrad/HistoryActivity$1$1;->this$1:Lru/fokus/tetrad/HistoryActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/HistoryActivity$1;->this$0:Lru/fokus/tetrad/HistoryActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HistoryActivity;->access$000(Lru/fokus/tetrad/HistoryActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    invoke-virtual {v0}, Lru/fokus/tetrad/Store;->clearHistory()V

    iget-object v0, p0, Lru/fokus/tetrad/HistoryActivity$1$1$1;->this$2:Lru/fokus/tetrad/HistoryActivity$1$1;

    iget-object v0, v0, Lru/fokus/tetrad/HistoryActivity$1$1;->this$1:Lru/fokus/tetrad/HistoryActivity$1;

    iget-object v0, v0, Lru/fokus/tetrad/HistoryActivity$1;->this$0:Lru/fokus/tetrad/HistoryActivity;

    invoke-static {v0}, Lru/fokus/tetrad/HistoryActivity;->access$100(Lru/fokus/tetrad/HistoryActivity;)V

    return-void
.end method

.class Lru/fokus/tetrad/CheckActivity$14;
.super Ljava/lang/Object;
.source "CheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckActivity;->chatCard()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckActivity;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 458
    iput-object p1, p0, Lru/fokus/tetrad/CheckActivity$14;->this$0:Lru/fokus/tetrad/CheckActivity;

    iput-object p2, p0, Lru/fokus/tetrad/CheckActivity$14;->val$q:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lru/fokus/tetrad/CheckActivity$14;->this$0:Lru/fokus/tetrad/CheckActivity;

    iget-object v1, p0, Lru/fokus/tetrad/CheckActivity$14;->val$q:Ljava/lang/String;

    invoke-static {v0, v1}, Lru/fokus/tetrad/CheckActivity;->access$800(Lru/fokus/tetrad/CheckActivity;Ljava/lang/String;)V

    return-void
.end method

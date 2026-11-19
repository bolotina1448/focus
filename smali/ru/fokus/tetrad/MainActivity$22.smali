.class Lru/fokus/tetrad/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->tryStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$22;->this$0:Lru/fokus/tetrad/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$22;->this$0:Lru/fokus/tetrad/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/fokus/tetrad/Photos;->camera(Landroid/app/Activity;I)V

    return-void
.end method

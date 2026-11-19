.class Lru/fokus/tetrad/Photos$3;
.super Ljava/lang/Object;
.source "Photos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Photos;->strip(Landroid/app/Activity;Ljava/util/List;ILru/fokus/tetrad/Photos$Remove;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Ljava/io/File;

.field final synthetic val$remove:Lru/fokus/tetrad/Photos$Remove;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/Photos$Remove;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lru/fokus/tetrad/Photos$3;->val$remove:Lru/fokus/tetrad/Photos$Remove;

    iput-object p2, p0, Lru/fokus/tetrad/Photos$3;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lru/fokus/tetrad/Photos$3;->val$remove:Lru/fokus/tetrad/Photos$Remove;

    iget-object v1, p0, Lru/fokus/tetrad/Photos$3;->val$f:Ljava/io/File;

    invoke-interface {v0, v1}, Lru/fokus/tetrad/Photos$Remove;->on(Ljava/io/File;)V

    return-void
.end method

.class Lru/fokus/tetrad/Photos$2;
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
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lru/fokus/tetrad/Photos$2;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lru/fokus/tetrad/Photos$2;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lru/fokus/tetrad/Photos$2;->val$a:Landroid/app/Activity;

    iget-object v1, p0, Lru/fokus/tetrad/Photos$2;->val$f:Ljava/io/File;

    invoke-static {v0, v1}, Lru/fokus/tetrad/Photos;->view(Landroid/app/Activity;Ljava/io/File;)V

    return-void
.end method

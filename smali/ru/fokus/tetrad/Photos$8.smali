.class Lru/fokus/tetrad/Photos$8;
.super Ljava/lang/Object;
.source "Photos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Photos;->addMore(Landroid/app/Activity;Ljava/lang/String;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$camRc:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 177
    iput-object p1, p0, Lru/fokus/tetrad/Photos$8;->val$a:Landroid/app/Activity;

    iput p2, p0, Lru/fokus/tetrad/Photos$8;->val$camRc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lru/fokus/tetrad/Photos$8;->val$a:Landroid/app/Activity;

    iget v1, p0, Lru/fokus/tetrad/Photos$8;->val$camRc:I

    invoke-static {v0, v1}, Lru/fokus/tetrad/Photos;->camera(Landroid/app/Activity;I)V

    return-void
.end method

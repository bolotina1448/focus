.class Lru/fokus/tetrad/Photos$7;
.super Ljava/lang/Object;
.source "Photos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/Photos;->dropZone(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;II)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$galRc:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lru/fokus/tetrad/Photos$7;->val$a:Landroid/app/Activity;

    iput p2, p0, Lru/fokus/tetrad/Photos$7;->val$galRc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lru/fokus/tetrad/Photos$7;->val$a:Landroid/app/Activity;

    iget v1, p0, Lru/fokus/tetrad/Photos$7;->val$galRc:I

    invoke-static {v0, v1}, Lru/fokus/tetrad/Photos;->gallery(Landroid/app/Activity;I)V

    return-void
.end method

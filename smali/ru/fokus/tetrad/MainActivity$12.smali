.class Lru/fokus/tetrad/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/MainActivity;->itemBox(Lorg/json/JSONArray;ILorg/json/JSONObject;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/MainActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lru/fokus/tetrad/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 220
    iput-object p1, p0, Lru/fokus/tetrad/MainActivity$12;->this$0:Lru/fokus/tetrad/MainActivity;

    iput p2, p0, Lru/fokus/tetrad/MainActivity$12;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$12;->this$0:Lru/fokus/tetrad/MainActivity;

    iget v1, p0, Lru/fokus/tetrad/MainActivity$12;->val$index:I

    invoke-static {v0, v1}, Lru/fokus/tetrad/MainActivity;->access$902(Lru/fokus/tetrad/MainActivity;I)I

    iget-object v0, p0, Lru/fokus/tetrad/MainActivity$12;->this$0:Lru/fokus/tetrad/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lru/fokus/tetrad/Photos;->camera(Landroid/app/Activity;I)V

    return-void
.end method

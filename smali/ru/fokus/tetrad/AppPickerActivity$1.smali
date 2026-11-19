.class Lru/fokus/tetrad/AppPickerActivity$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/AppPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/AppPickerActivity;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/AppPickerActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity$1;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$1;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-virtual {v0}, Lru/fokus/tetrad/AppPickerActivity;->finish()V

    return-void
.end method

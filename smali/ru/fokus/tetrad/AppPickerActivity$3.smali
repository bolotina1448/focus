.class Lru/fokus/tetrad/AppPickerActivity$3;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 87
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity$3;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$3;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$200(Lru/fokus/tetrad/AppPickerActivity;)V

    return-void
.end method

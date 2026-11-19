.class Lru/fokus/tetrad/AppPickerActivity$2;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 66
    iput-object p1, p0, Lru/fokus/tetrad/AppPickerActivity$2;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$2;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/fokus/tetrad/AppPickerActivity;->access$002(Lru/fokus/tetrad/AppPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lru/fokus/tetrad/AppPickerActivity$2;->this$0:Lru/fokus/tetrad/AppPickerActivity;

    invoke-static {v0}, Lru/fokus/tetrad/AppPickerActivity;->access$100(Lru/fokus/tetrad/AppPickerActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

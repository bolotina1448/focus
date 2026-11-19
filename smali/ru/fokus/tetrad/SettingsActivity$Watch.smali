.class abstract Lru/fokus/tetrad/SettingsActivity$Watch;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Watch"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/fokus/tetrad/SettingsActivity$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lru/fokus/tetrad/SettingsActivity$Watch;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 45
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru/fokus/tetrad/SettingsActivity$Watch;->on(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method abstract on(Ljava/lang/String;)V
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

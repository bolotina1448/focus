.class public Lru/fokus/tetrad/Schedule$Variant;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variant"
.end annotation


# instance fields
.field public group:Ljava/lang/String;

.field public room:Ljava/lang/String;

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Variant;->subject:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Variant;->group:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Variant;->room:Ljava/lang/String;

    return-void
.end method

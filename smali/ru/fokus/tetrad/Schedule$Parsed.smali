.class public Lru/fokus/tetrad/Schedule$Parsed;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parsed"
.end annotation


# instance fields
.field public final mentioned:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final week:Lru/fokus/tetrad/Schedule$Week;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lru/fokus/tetrad/Schedule$Week;

    invoke-direct {v0}, Lru/fokus/tetrad/Schedule$Week;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Parsed;->week:Lru/fokus/tetrad/Schedule$Week;

    .line 168
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lru/fokus/tetrad/Schedule$Parsed;->mentioned:Ljava/util/Set;

    return-void
.end method

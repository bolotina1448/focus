.class public Lru/fokus/tetrad/Mesh$MeshException;
.super Ljava/lang/Exception;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/fokus/tetrad/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeshException"
.end annotation


# instance fields
.field final needLogin:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lru/fokus/tetrad/Mesh$MeshException;->needLogin:Z

    return-void
.end method

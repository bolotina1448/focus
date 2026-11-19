.class Lru/fokus/tetrad/CheckState$3;
.super Ljava/lang/Object;
.source "CheckState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/CheckState;->ask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/CheckState;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$gen:I

.field final synthetic val$question:Ljava/lang/String;

.field final synthetic val$rules:Ljava/lang/String;

.field final synthetic val$turns:Ljava/util/List;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/CheckState;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iput-object p2, p0, Lru/fokus/tetrad/CheckState$3;->val$turns:Ljava/util/List;

    iput-object p3, p0, Lru/fokus/tetrad/CheckState$3;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lru/fokus/tetrad/CheckState$3;->val$rules:Ljava/lang/String;

    iput p5, p0, Lru/fokus/tetrad/CheckState$3;->val$gen:I

    iput-object p6, p0, Lru/fokus/tetrad/CheckState$3;->val$question:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 117
    .line 119
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lru/fokus/tetrad/CheckState$3;->val$turns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 120
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->val$turns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v2, "user"

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->val$turns:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->val$turns:Ljava/util/List;

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$3;->val$turns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->val$ctx:Landroid/content/Context;

    new-instance v1, Lru/fokus/tetrad/Store;

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$3;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lru/fokus/tetrad/Store;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$3;->val$rules:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x5dc

    invoke-static/range {v0 .. v5}, Lru/fokus/tetrad/AiClient;->complete(Landroid/content/Context;Lru/fokus/tetrad/Store;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/fokus/tetrad/CheckState;->clean(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lru/fokus/tetrad/AiClient$AiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move v0, v6

    .line 130
    :goto_1
    iget v2, p0, Lru/fokus/tetrad/CheckState$3;->val$gen:I

    iget-object v3, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    invoke-static {v3}, Lru/fokus/tetrad/CheckState;->access$000(Lru/fokus/tetrad/CheckState;)I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iput-boolean v7, v0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    .line 139
    :goto_2
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Lru/fokus/tetrad/AiClient$AiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move v0, v7

    .line 129
    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    .line 127
    const-string v1, "\u0427\u0442\u043e-\u0442\u043e \u043f\u043e\u0448\u043b\u043e \u043d\u0435 \u0442\u0430\u043a. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    move v0, v7

    .line 128
    goto :goto_1

    .line 131
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "assistant"

    aput-object v3, v2, v7

    aput-object v1, v2, v6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_3
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iput-boolean v7, v0, Lru/fokus/tetrad/CheckState;->chatBusy:Z

    .line 138
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    invoke-static {v0}, Lru/fokus/tetrad/CheckState;->access$100(Lru/fokus/tetrad/CheckState;)V

    goto :goto_2

    .line 133
    :cond_2
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    iget-object v2, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v2, v2, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "user"

    aput-object v3, v2, v7

    iget-object v3, p0, Lru/fokus/tetrad/CheckState$3;->val$question:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lru/fokus/tetrad/CheckState$3;->this$0:Lru/fokus/tetrad/CheckState;

    iget-object v0, v0, Lru/fokus/tetrad/CheckState;->chat:Ljava/util/List;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "error"

    aput-object v3, v2, v7

    aput-object v1, v2, v6

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

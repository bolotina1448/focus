.class Lru/fokus/tetrad/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;

.field final synthetic val$c:Landroid/widget/TextView;

.field final synthetic val$gr:Landroid/widget/LinearLayout;

.field final synthetic val$gs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;Ljava/lang/String;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$8;->this$0:Lru/fokus/tetrad/SettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$gs:Ljava/lang/String;

    iput-object p3, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$gr:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$8;->this$0:Lru/fokus/tetrad/SettingsActivity;

    invoke-static {v0}, Lru/fokus/tetrad/SettingsActivity;->access$100(Lru/fokus/tetrad/SettingsActivity;)Lru/fokus/tetrad/Store;

    move-result-object v0

    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$gs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lru/fokus/tetrad/Store;->setGrade(Ljava/lang/String;)V

    move v1, v2

    .line 151
    :goto_0
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$gr:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$gr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$gr:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lru/fokus/tetrad/SettingsActivity$8;->val$c:Landroid/widget/TextView;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v0, v3}, Lru/fokus/tetrad/Ui;->styleChip(Landroid/widget/TextView;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    .line 152
    :cond_1
    return-void
.end method

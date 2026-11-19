.class Lru/fokus/tetrad/SettingsActivity$26;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/fokus/tetrad/SettingsActivity;->secretField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lru/fokus/tetrad/SettingsActivity$Save;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/fokus/tetrad/SettingsActivity;

.field final synthetic val$key:Landroid/widget/EditText;

.field final synthetic val$show:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lru/fokus/tetrad/SettingsActivity;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 318
    iput-object p1, p0, Lru/fokus/tetrad/SettingsActivity$26;->this$0:Lru/fokus/tetrad/SettingsActivity;

    iput-object p2, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$key:Landroid/widget/EditText;

    iput-object p3, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$show:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v1, 0x80

    .line 319
    iget-object v0, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$key:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0xff0

    .line 320
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 321
    :goto_0
    iget-object v2, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$key:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/16 v1, 0x90

    :cond_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 322
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$key:Landroid/widget/EditText;

    sget-object v2, Lru/fokus/tetrad/Ui;->BODY:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 323
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$key:Landroid/widget/EditText;

    iget-object v2, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$key:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 324
    iget-object v1, p0, Lru/fokus/tetrad/SettingsActivity$26;->val$show:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v0, "\u0421\u043a\u0440\u044b\u0442\u044c"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 324
    :cond_2
    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c"

    goto :goto_1
.end method

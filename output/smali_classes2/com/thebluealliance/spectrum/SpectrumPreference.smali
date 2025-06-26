.class public Lcom/thebluealliance/spectrum/SpectrumPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field public e:[I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Lcom/thebluealliance/spectrum/SpectrumPalette;

.field public j:Z

.field public k:Landroid/view/View;

.field public l:I

.field public m:I

.field public n:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->h:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->j:Z

    .line 4
    iput v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->l:I

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->m:I

    .line 6
    new-instance v3, Lcom/thebluealliance/spectrum/SpectrumPreference$a;

    invoke-direct {v3, p0}, Lcom/thebluealliance/spectrum/SpectrumPreference$a;-><init>(Lcom/thebluealliance/spectrum/SpectrumPreference;)V

    iput-object v3, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->n:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPreference:[I

    invoke-virtual {p1, p2, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    :try_start_0
    sget p2, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPreference_spectrum_colors:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->e:[I

    .line 10
    :cond_0
    sget p2, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPreference_spectrum_closeOnSelected:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->h:Z

    .line 11
    sget p2, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_outlineWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->l:I

    .line 12
    sget p2, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_columnCount:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    sget p1, Lcom/thebluealliance/spectrum/R$layout;->dialog_color_picker:I

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 15
    sget p1, Lcom/thebluealliance/spectrum/R$layout;->color_preference_widget:I

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setWidgetLayoutResource(I)V

    return-void

    :catchall_0
    move-exception p2

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->k:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lq27;

    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    invoke-direct {v0, v1}, Lq27;-><init>(I)V

    .line 3
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->l:I

    invoke-virtual {v0, v1}, Lq27;->b(I)V

    .line 4
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, -0x1000000

    .line 5
    invoke-virtual {v0, v1}, Lq27;->a(I)V

    const/4 v2, 0x0

    .line 6
    iget-object v3, v0, Lq27;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/thebluealliance/spectrum/R$dimen;->color_preference_disabled_outline_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lq27;->b(I)V

    .line 8
    iget-object v2, v0, Lq27;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/16 v1, 0x61

    .line 10
    iget-object v2, v0, Lq27;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->e:[I

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/thebluealliance/spectrum/R$id;->palette:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/thebluealliance/spectrum/SpectrumPalette;

    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->i:Lcom/thebluealliance/spectrum/SpectrumPalette;

    .line 4
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->e:[I

    invoke-virtual {p1, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setColors([I)V

    .line 5
    iget-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->i:Lcom/thebluealliance/spectrum/SpectrumPalette;

    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    invoke-virtual {p1, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setSelectedColor(I)V

    .line 6
    iget-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->i:Lcom/thebluealliance/spectrum/SpectrumPalette;

    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->l:I

    invoke-virtual {p1, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setOutlineWidth(I)V

    .line 7
    iget-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->i:Lcom/thebluealliance/spectrum/SpectrumPalette;

    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->m:I

    invoke-virtual {p1, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setFixedColumnCount(I)V

    .line 8
    iget-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->i:Lcom/thebluealliance/spectrum/SpectrumPalette;

    new-instance v0, Lcom/thebluealliance/spectrum/SpectrumPreference$b;

    invoke-direct {v0, p0}, Lcom/thebluealliance/spectrum/SpectrumPreference$b;-><init>(Lcom/thebluealliance/spectrum/SpectrumPreference;)V

    invoke-virtual {p1, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setOnColorSelectedListener(Lcom/thebluealliance/spectrum/SpectrumPalette$a;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SpectrumPreference requires a colors array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 2
    sget v0, Lcom/thebluealliance/spectrum/R$id;->color_preference_widget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->k:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPreference;->i()V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->n:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDialogClosed(Z)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->g:I

    .line 3
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-boolean v2, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->j:Z

    if-nez v2, :cond_2

    .line 5
    :cond_1
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    .line 6
    iput-boolean v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->j:Z

    .line 7
    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->persistInt(I)Z

    .line 8
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPreference;->i()V

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/high16 v0, -0x1000000

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 2
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method public onPrepareForRemoval()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/preference/DialogPreference;->onPrepareForRemoval()V

    .line 2
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->n:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, -0x1000000

    .line 1
    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->getPersistedInt(I)I

    move-result p1

    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    goto :goto_0

    .line 2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->persistInt(I)Z

    :goto_0
    return-void
.end method

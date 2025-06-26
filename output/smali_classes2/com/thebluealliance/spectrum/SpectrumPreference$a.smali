.class public Lcom/thebluealliance/spectrum/SpectrumPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thebluealliance/spectrum/SpectrumPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/thebluealliance/spectrum/SpectrumPreference;


# direct methods
.method public constructor <init>(Lcom/thebluealliance/spectrum/SpectrumPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference$a;->a:Lcom/thebluealliance/spectrum/SpectrumPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference$a;->a:Lcom/thebluealliance/spectrum/SpectrumPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPreference$a;->a:Lcom/thebluealliance/spectrum/SpectrumPreference;

    .line 3
    iget v1, v0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    .line 4
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 5
    iput p1, v0, Lcom/thebluealliance/spectrum/SpectrumPreference;->f:I

    .line 6
    iget-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPreference$a;->a:Lcom/thebluealliance/spectrum/SpectrumPreference;

    .line 7
    invoke-virtual {p1}, Lcom/thebluealliance/spectrum/SpectrumPreference;->i()V

    :cond_0
    return-void
.end method

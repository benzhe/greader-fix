.class public final synthetic Lyb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb2;


# instance fields
.field public final a:Lub2;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lub2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb2;->a:Lub2;

    iput-object p2, p0, Lyb2;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lyb2;->a:Lub2;

    iget-object v1, p0, Lyb2;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    const-string v3, "native_version"

    .line 2
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "native_templates"

    .line 3
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->h:Ljava/util/ArrayList;

    const-string v3, "native_custom_templates"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    sget-object v1, Ly40;->W1:Lo40;

    .line 6
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 7
    invoke-virtual {v3, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "landscape"

    const-string v4, "portrait"

    const-string v5, "any"

    const-string v6, "unknown"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->e:I

    if-le v1, v2, :cond_4

    const-string v1, "enable_native_media_orientation"

    .line 9
    invoke-virtual {p1, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 11
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->l:I

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v9, 0x4

    if-eq v1, v9, :cond_0

    move-object v1, v6

    goto :goto_0

    :cond_0
    const-string v1, "square"

    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    move-object v1, v5

    .line 12
    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "native_media_orientation"

    .line 13
    invoke-virtual {p1, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    .line 15
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->g:I

    if-eqz v1, :cond_6

    if-eq v1, v8, :cond_5

    if-eq v1, v7, :cond_7

    move-object v3, v6

    goto :goto_1

    :cond_5
    move-object v3, v4

    goto :goto_1

    :cond_6
    move-object v3, v5

    .line 16
    :cond_7
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "native_image_orientation"

    .line 17
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_8
    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->h:Z

    const-string v3, "native_multiple_images"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->i:Lcom/google/android/gms/internal/ads/zzaei;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaei;->k:Z

    const-string v3, "use_custom_mute"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v1, v0, Lub2;->c:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    .line 21
    :cond_9
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 22
    :goto_2
    iget-object v3, v0, Lub2;->d:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzf()I

    move-result v3

    if-le v1, v3, :cond_a

    .line 23
    iget-object v3, v0, Lub2;->d:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzl()V

    .line 24
    iget-object v3, v0, Lub2;->d:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v3, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdi(I)V

    .line 25
    :cond_a
    iget-object v1, v0, Lub2;->d:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzk()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 26
    iget-object v3, v0, Lub2;->b:Lll2;

    iget-object v3, v3, Lll2;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    .line 28
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "native_advanced_settings"

    .line 29
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_c
    iget-object v1, v0, Lub2;->b:Lll2;

    iget v1, v1, Lll2;->k:I

    if-le v1, v8, :cond_d

    const-string v3, "max_num_ads"

    .line 31
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    :cond_d
    iget-object v1, v0, Lub2;->b:Lll2;

    iget-object v1, v1, Lll2;->c:Lcom/google/android/gms/internal/ads/zzajy;

    if-eqz v1, :cond_12

    .line 33
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajy;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 34
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzajy;->e:I

    if-lt v3, v7, :cond_e

    .line 35
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajy;->h:I

    if-eq v1, v7, :cond_10

    if-eq v1, v2, :cond_f

    goto :goto_4

    .line 36
    :cond_e
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajy;->f:I

    if-eq v1, v8, :cond_10

    if-eq v1, v7, :cond_f

    const/16 v2, 0x34

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Instream ad video aspect ratio "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is wrong."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lis0;->zzex(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    const-string v1, "p"

    goto :goto_5

    :cond_10
    :goto_4
    const-string v1, "l"

    :goto_5
    const-string v2, "ia_var"

    .line 38
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 39
    :cond_11
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajy;->g:Ljava/lang/String;

    const-string v2, "ad_tag"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const-string v1, "instr"

    .line 40
    invoke-virtual {p1, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    :cond_12
    iget-object v0, v0, Lub2;->b:Lll2;

    invoke-virtual {v0}, Lll2;->a()Lp90;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v0, "has_delayed_banner_listener"

    .line 42
    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method

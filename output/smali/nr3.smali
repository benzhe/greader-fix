.class public final Lnr3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnr3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnr3;

    invoke-direct {v0}, Lnr3;-><init>()V

    sput-object v0, Lnr3;->a:Lnr3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lzu3;)Lcom/google/android/gms/internal/ads/zzvq;
    .locals 29

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lzu3;->a:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    move-wide v5, v1

    .line 3
    iget-object v1, v0, Lzu3;->b:Ljava/lang/String;

    .line 4
    iget v8, v0, Lzu3;->d:I

    .line 5
    iget-object v2, v0, Lzu3;->e:Ljava/util/Set;

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v9, v2

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v2, p0

    .line 8
    invoke-virtual {v0, v2}, Lzu3;->b(Landroid/content/Context;)Z

    move-result v10

    .line 9
    iget-object v15, v0, Lzu3;->f:Landroid/location/Location;

    .line 10
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 11
    iget-object v7, v0, Lzu3;->h:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 12
    iget-object v3, v0, Lzu3;->r:Lcom/google/android/gms/ads/query/AdInfo;

    if-eqz v3, :cond_3

    .line 13
    sget-object v11, Los3;->j:Los3;

    iget-object v11, v11, Los3;->i:Ljava/util/WeakHashMap;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/ads/query/AdInfo;->getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->i:Ljava/util/WeakHashMap;

    .line 16
    iget-object v11, v0, Lzu3;->r:Lcom/google/android/gms/ads/query/AdInfo;

    .line 17
    invoke-virtual {v11}, Lcom/google/android/gms/ads/query/AdInfo;->getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v3, ""

    .line 18
    :goto_2
    new-instance v11, Lcom/google/android/gms/internal/ads/zzvf;

    .line 19
    iget-object v12, v0, Lzu3;->r:Lcom/google/android/gms/ads/query/AdInfo;

    .line 20
    invoke-virtual {v12}, Lcom/google/android/gms/ads/query/AdInfo;->getAdString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzvf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v11

    goto :goto_3

    :cond_3
    const/16 v23, 0x0

    .line 21
    :goto_3
    iget-boolean v12, v0, Lzu3;->g:Z

    .line 22
    iget-object v13, v0, Lzu3;->j:Ljava/lang/String;

    .line 23
    iget-object v3, v0, Lzu3;->l:Lcom/google/android/gms/ads/search/SearchAdRequest;

    if-eqz v3, :cond_4

    .line 24
    new-instance v11, Lcom/google/android/gms/internal/ads/zzaav;

    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    move-object v14, v11

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 25
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v16, 0x0

    if-eqz v2, :cond_b

    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 27
    sget-object v11, Los3;->j:Los3;

    iget-object v11, v11, Los3;->a:Lzr0;

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    const/16 v17, 0x0

    :goto_5
    add-int/lit8 v4, v17, 0x1

    .line 29
    array-length v3, v11

    if-ge v4, v3, :cond_7

    .line 30
    aget-object v3, v11, v17

    move-object/from16 v21, v1

    .line 31
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v15

    const-string v15, "loadAd"

    .line 33
    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lzr0;->c:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lzr0;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lzr0;->e:Ljava/lang/String;

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lzr0;->f:Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lzr0;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lzr0;->h:Ljava/lang/String;

    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40
    :cond_5
    aget-object v1, v11, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move/from16 v17, v4

    move-object/from16 v1, v21

    move-object/from16 v15, v28

    goto :goto_5

    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v28, v15

    const/4 v1, 0x0

    :goto_6
    if-eqz v2, :cond_a

    .line 41
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 44
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    :goto_7
    add-int/lit8 v15, v2, -0x1

    if-lez v2, :cond_8

    .line 45
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 46
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v15

    goto :goto_7

    .line 47
    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-eqz v1, :cond_a

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v4, v1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    move-object v1, v4

    goto :goto_9

    :cond_b
    move-object/from16 v21, v1

    move-object/from16 v28, v15

    const/4 v1, 0x0

    .line 49
    :goto_9
    iget-boolean v2, v0, Lzu3;->q:Z

    move/from16 v22, v2

    .line 50
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v2

    .line 51
    iget-object v2, v2, Lgv3;->g:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 52
    iget v3, v0, Lzu3;->m:I

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v4

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 55
    iget v3, v0, Lzu3;->s:I

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v4

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 58
    iget-object v4, v0, Lzu3;->t:Ljava/lang/String;

    aput-object v4, v3, v16

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration;->getMaxAdContentRating()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 60
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lpr3;->e:Ljava/util/Comparator;

    .line 61
    invoke-static {v2, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    .line 62
    invoke-virtual/range {p1 .. p1}, Lzu3;->c()Ljava/util/List;

    move-result-object v26

    .line 63
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvq;

    move-object v3, v2

    .line 64
    iget-object v4, v0, Lzu3;->h:Landroid/os/Bundle;

    move-object/from16 v17, v4

    .line 65
    iget-object v4, v0, Lzu3;->o:Landroid/os/Bundle;

    move-object/from16 v18, v4

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    .line 67
    iget-object v15, v0, Lzu3;->p:Ljava/util/Set;

    .line 68
    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    .line 69
    iget-object v4, v0, Lzu3;->k:Ljava/lang/String;

    move-object/from16 v20, v4

    .line 70
    iget v0, v0, Lzu3;->u:I

    move/from16 v27, v0

    const/16 v4, 0x8

    move-object/from16 v15, v28

    move-object/from16 v16, v21

    move-object/from16 v21, v1

    .line 71
    invoke-direct/range {v3 .. v27}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V

    return-object v2
.end method

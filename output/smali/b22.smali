.class public final synthetic Lb22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lz12;

.field public final b:Lhl2;

.field public final c:Lsk2;


# direct methods
.method public constructor <init>(Lz12;Lhl2;Lsk2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb22;->a:Lz12;

    iput-object p2, p0, Lb22;->b:Lhl2;

    iput-object p3, p0, Lb22;->c:Lsk2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 9

    iget-object v0, p0, Lb22;->a:Lz12;

    iget-object v1, p0, Lb22;->b:Lhl2;

    iget-object v2, p0, Lb22;->c:Lsk2;

    check-cast p1, Lorg/json/JSONArray;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v3, Ldm2;->g:Ldm2;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 3
    new-instance p1, Lbu1;

    invoke-direct {p1, v3}, Lbu1;-><init>(Ldm2;)V

    .line 4
    new-instance v0, Lvv2$a;

    invoke-direct {v0, p1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 5
    :cond_0
    iget-object v4, v1, Lhl2;->a:Lcl2;

    iget-object v4, v4, Lcl2;->a:Lll2;

    iget v4, v4, Lll2;->k:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 7
    iget-object v6, v0, Lz12;->d:Lyl2;

    iget-object v7, v1, Lhl2;->a:Lcl2;

    iget-object v7, v7, Lcl2;->a:Lll2;

    iget v7, v7, Lll2;->k:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v6, v7}, Lyl2;->a(I)V

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v1, Lhl2;->a:Lcl2;

    iget-object v7, v7, Lcl2;->a:Lll2;

    iget v7, v7, Lll2;->k:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    :goto_0
    iget-object v7, v1, Lhl2;->a:Lcl2;

    iget-object v7, v7, Lcl2;->a:Lll2;

    iget v7, v7, Lll2;->k:I

    if-ge v5, v7, :cond_2

    if-ge v5, v4, :cond_1

    .line 10
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0, v1, v2, v7}, Lz12;->c(Lhl2;Lsk2;Lorg/json/JSONObject;)Law2;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    new-instance v7, Lbu1;

    invoke-direct {v7, v3}, Lbu1;-><init>(Ldm2;)V

    .line 12
    new-instance v8, Lvv2$a;

    invoke-direct {v8, v7}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v6}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lz12;->c(Lhl2;Lsk2;Lorg/json/JSONObject;)Law2;

    move-result-object p1

    sget-object v1, Ld22;->a:Lvs2;

    iget-object v0, v0, Lz12;->b:Lzv2;

    .line 16
    invoke-static {p1, v1, v0}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    :goto_2
    return-object v0
.end method

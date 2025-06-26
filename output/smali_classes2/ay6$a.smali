.class public final Lay6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb45;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lay6;->a(Lbc7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb45<",
        "Ljava/util/List<",
        "Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lbc7;


# direct methods
.method public constructor <init>(Lbc7;)V
    .locals 0

    iput-object p1, p0, Lay6$a;->a:Lbc7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "languageCode"

    .line 2
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lek7;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "languageCode.first()"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    const-string p1, "=> Can\'t identify language."

    .line 4
    invoke-static {p1}, Ljy6;->a(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lay6$a;->a:Lbc7;

    check-cast p1, Leh7$a;

    invoke-virtual {p1, v2}, Leh7$a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lek7;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 7
    iget-object p1, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    const-string v0, "languageCode.first().languageTag"

    .line 8
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "und"

    .line 9
    invoke-static {p1, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object p1, p0, Lay6$a;->a:Lbc7;

    check-cast p1, Leh7$a;

    invoke-virtual {p1, v2}, Leh7$a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lay6$a;->a:Lbc7;

    check-cast v0, Leh7$a;

    invoke-virtual {v0, p1}, Leh7$a;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

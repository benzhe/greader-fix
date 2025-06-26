.class public final Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    value = "language_id_jni.cc"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
        value = "language_id_jni.cc"
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    .line 3
    iget v1, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    iget v3, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    .line 4
    invoke-static {v1, p1}, Lc50;->J2(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lal4;

    const-class v1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lal4;-><init>(Ljava/lang/String;Lni4;)V

    .line 2
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->a:Ljava/lang/String;

    .line 3
    new-instance v3, Lbk4;

    invoke-direct {v3, v2}, Lbk4;-><init>(Lni4;)V

    .line 4
    iget-object v4, v0, Lal4;->c:Lbk4;

    iput-object v3, v4, Lbk4;->c:Lbk4;

    iput-object v3, v0, Lal4;->c:Lbk4;

    .line 5
    iput-object v1, v3, Lbk4;->b:Ljava/lang/Object;

    const-string v1, "languageTag"

    .line 6
    iput-object v1, v3, Lbk4;->a:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b:F

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Lbk4;

    invoke-direct {v3, v2}, Lbk4;-><init>(Lni4;)V

    .line 10
    iget-object v2, v0, Lal4;->c:Lbk4;

    iput-object v3, v2, Lbk4;->c:Lbk4;

    iput-object v3, v0, Lal4;->c:Lbk4;

    .line 11
    iput-object v1, v3, Lbk4;->b:Ljava/lang/Object;

    const-string v1, "confidence"

    .line 12
    iput-object v1, v3, Lbk4;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lal4;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

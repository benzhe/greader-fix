.class public final Lokhttp3/internal/tls/OkHostnameVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALT_DNS_NAME:I = 0x2

.field private static final ALT_IPA_NAME:I = 0x7

.field public static final INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-direct {v0}, Lokhttp3/internal/tls/OkHostnameVerifier;-><init>()V

    sput-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 8
    :cond_4
    sget-object p1, Lhk7;->e:Lhk7;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    sget-object p1, Lhk7;->e:Lhk7;

    return-object p1
.end method

.method private final verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_e

    const-string v2, "."

    const/4 v3, 0x2

    .line 7
    invoke-static {p1, v2, v1, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, ".."

    .line 8
    invoke-static {p1, v4, v1, v3}, Lco7;->d(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_e

    .line 10
    invoke-static {p2, v2, v1, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    if-nez v5, :cond_e

    .line 11
    invoke-static {p2, v4, v1, v3}, Lco7;->d(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_4

    .line 12
    :cond_5
    invoke-static {p1, v2, v1, v3}, Lco7;->d(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_6

    .line 13
    invoke-static {p1, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_6
    invoke-static {p2, v2, v1, v3}, Lco7;->d(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_7

    .line 15
    invoke-static {p2, v2}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    :cond_7
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Locale.US"

    invoke-static {v2, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p2, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "*"

    .line 17
    invoke-static {p2, v2, v1, v3}, Lco7;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_8

    .line 18
    invoke-static {p1, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    const-string v2, "*."

    .line 19
    invoke-static {p2, v2, v1, v3}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x2a

    const/4 v5, 0x4

    invoke-static {p2, v4, v0, v1, v5}, Lco7;->k(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_9

    goto :goto_4

    .line 20
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_a

    return v1

    .line 21
    :cond_a
    invoke-static {v2, p2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v1

    .line 22
    :cond_b
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1, p2, v1, v3}, Lco7;->d(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 24
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr v2, p2

    if-lez v2, :cond_d

    const/16 p2, 0x2e

    sub-int/2addr v2, v0

    .line 25
    invoke-static {p1, p2, v2, v1, v5}, Lco7;->o(Ljava/lang/CharSequence;CIZI)I

    move-result p1

    if-eq p1, v6, :cond_d

    return v1

    :cond_d
    return v0

    :cond_e
    :goto_4
    return v1
.end method

.method private final verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p2, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 3
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    sget-object v2, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-direct {v2, p1, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private final verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    .line 2
    invoke-direct {p0, p2, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    .line 3
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lokhttp3/internal/HostnamesKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "certificate"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lek7;->o(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lokhttp3/internal/Util;->canParseAsIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyIpAddress(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verifyHostname(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "session"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

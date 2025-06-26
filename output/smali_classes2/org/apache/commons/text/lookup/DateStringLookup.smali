.class public final Lorg/apache/commons/text/lookup/DateStringLookup;
.super Lorg/apache/commons/text/lookup/AbstractStringLookup;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/text/lookup/DateStringLookup;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/text/lookup/DateStringLookup;

    invoke-direct {v0}, Lorg/apache/commons/text/lookup/DateStringLookup;-><init>()V

    sput-object v0, Lorg/apache/commons/text/lookup/DateStringLookup;->INSTANCE:Lorg/apache/commons/text/lookup/DateStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    return-void
.end method

.method private formatDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    invoke-static {p3}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "Invalid date format: [%s]"

    .line 2
    invoke-static {p1, p3, p2}, Lorg/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 3
    invoke-static {}, Lorg/apache/commons/lang3/time/FastDateFormat;->getInstance()Lorg/apache/commons/lang3/time/FastDateFormat;

    move-result-object p3

    .line 4
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Lorg/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/text/lookup/DateStringLookup;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

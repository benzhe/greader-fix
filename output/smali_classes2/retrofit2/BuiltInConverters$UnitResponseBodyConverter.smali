.class public final Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/BuiltInConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnitResponseBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lokhttp3/ResponseBody;",
        "Lyj7;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;

    invoke-direct {v0}, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;-><init>()V

    sput-object v0, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;->convert(Lokhttp3/ResponseBody;)Lyj7;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lokhttp3/ResponseBody;)Lyj7;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 3
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method

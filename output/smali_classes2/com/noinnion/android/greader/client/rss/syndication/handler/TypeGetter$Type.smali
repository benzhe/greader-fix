.class public final enum Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

.field public static final enum ATOM:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

.field public static final enum INVALID:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

.field public static final enum RSS091:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

.field public static final enum RSS20:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    const-string v1, "RSS20"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->RSS20:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    new-instance v1, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    const-string v3, "RSS091"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->RSS091:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    new-instance v3, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    const-string v5, "ATOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->ATOM:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    new-instance v5, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    const-string v7, "INVALID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->INVALID:Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->$VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-object p0
.end method

.method public static values()[Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->$VALUES:[Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    invoke-virtual {v0}, [Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/noinnion/android/greader/client/rss/syndication/handler/TypeGetter$Type;

    return-object v0
.end method

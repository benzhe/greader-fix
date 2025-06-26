.class public final synthetic Leo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyn5;


# static fields
.field public static final a:Leo5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leo5;

    invoke-direct {v0}, Leo5;-><init>()V

    sput-object v0, Leo5;->a:Leo5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lzn5;

    .line 1
    sget-object p2, Lio5;->e:Lio5$a;

    .line 2
    new-instance p2, Lwn5;

    const-string v0, "Couldn\'t find encoder for type "

    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lwn5;-><init>(Ljava/lang/String;)V

    throw p2
.end method

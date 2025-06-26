.class public final enum Lsa6$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsa6$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lsa6$b;

.field public static final enum f:Lsa6$b;

.field public static final enum g:Lsa6$b;

.field public static final synthetic h:[Lsa6$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lsa6$b;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsa6$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsa6$b;->e:Lsa6$b;

    .line 2
    new-instance v1, Lsa6$b;

    const-string v3, "BAD_CONFIG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lsa6$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsa6$b;->f:Lsa6$b;

    .line 3
    new-instance v3, Lsa6$b;

    const-string v5, "AUTH_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lsa6$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsa6$b;->g:Lsa6$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lsa6$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lsa6$b;->h:[Lsa6$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lsa6$b;
    .locals 1

    .line 1
    const-class v0, Lsa6$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsa6$b;

    return-object p0
.end method

.method public static values()[Lsa6$b;
    .locals 1

    .line 1
    sget-object v0, Lsa6$b;->h:[Lsa6$b;

    invoke-virtual {v0}, [Lsa6$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsa6$b;

    return-object v0
.end method

.class public final enum Ldj6$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldj6$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Ldj6$a;

.field public static final enum g:Ldj6$a;

.field public static final enum h:Ldj6$a;

.field public static final enum i:Ldj6$a;

.field public static final synthetic j:[Ldj6$a;


# instance fields
.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ldj6$a;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldj6$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ldj6$a;->f:Ldj6$a;

    .line 2
    new-instance v1, Ldj6$a;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ldj6$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Ldj6$a;->g:Ldj6$a;

    .line 3
    new-instance v3, Ldj6$a;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Ldj6$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Ldj6$a;->h:Ldj6$a;

    .line 4
    new-instance v5, Ldj6$a;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Ldj6$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Ldj6$a;->i:Ldj6$a;

    const/4 v7, 0x4

    new-array v7, v7, [Ldj6$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ldj6$a;->j:[Ldj6$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Ldj6$a;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldj6$a;
    .locals 1

    .line 1
    const-class v0, Ldj6$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldj6$a;

    return-object p0
.end method

.method public static values()[Ldj6$a;
    .locals 1

    .line 1
    sget-object v0, Ldj6$a;->j:[Ldj6$a;

    invoke-virtual {v0}, [Ldj6$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldj6$a;

    return-object v0
.end method

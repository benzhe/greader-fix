.class public final enum Lwo$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwo$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lwo$a;

.field public static final enum g:Lwo$a;

.field public static final enum h:Lwo$a;

.field public static final enum i:Lwo$a;

.field public static final synthetic j:[Lwo$a;


# instance fields
.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lwo$a;

    const-string v1, "INTERN_FIELD_NAMES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwo$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lwo$a;->f:Lwo$a;

    .line 2
    new-instance v1, Lwo$a;

    const-string v4, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v1, v4, v3, v3}, Lwo$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lwo$a;->g:Lwo$a;

    .line 3
    new-instance v4, Lwo$a;

    const-string v5, "FAIL_ON_SYMBOL_HASH_OVERFLOW"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lwo$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lwo$a;->h:Lwo$a;

    .line 4
    new-instance v5, Lwo$a;

    const-string v7, "USE_THREAD_LOCAL_FOR_BUFFER_RECYCLING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Lwo$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lwo$a;->i:Lwo$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lwo$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lwo$a;->j:[Lwo$a;

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

    iput-boolean p3, p0, Lwo$a;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwo$a;
    .locals 1

    .line 1
    const-class v0, Lwo$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwo$a;

    return-object p0
.end method

.method public static values()[Lwo$a;
    .locals 1

    .line 1
    sget-object v0, Lwo$a;->j:[Lwo$a;

    invoke-virtual {v0}, [Lwo$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwo$a;

    return-object v0
.end method


# virtual methods
.method public i(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

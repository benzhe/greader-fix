.class public final synthetic Ly46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc7;


# static fields
.field public static final e:Ly46;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly46;

    invoke-direct {v0}, Ly46;-><init>()V

    sput-object v0, Ly46;->e:Ly46;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

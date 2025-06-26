.class public final synthetic Ld46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# static fields
.field public static final e:Ld46;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld46;

    invoke-direct {v0}, Ld46;-><init>()V

    sput-object v0, Ld46;->e:Ld46;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lqg6;

    const-string p1, "Fetched from cache"

    .line 1
    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    return-void
.end method

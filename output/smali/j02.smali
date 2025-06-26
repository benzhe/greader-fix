.class public final synthetic Lj02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Lm41;


# direct methods
.method public constructor <init>(Lm41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj02;->a:Lm41;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lj02;->a:Lm41;

    .line 2
    invoke-virtual {p1}, Lm41;->h()Lj41;

    move-result-object p1

    return-object p1
.end method

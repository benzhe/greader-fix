.class public final synthetic Len1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Len1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Len1;->a:Ljava/lang/String;

    check-cast p1, Lh70;

    .line 2
    new-instance v1, Ldn1;

    invoke-direct {v1, v0, p1}, Ldn1;-><init>(Ljava/lang/String;Lh70;)V

    return-object v1
.end method

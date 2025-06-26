.class public final synthetic Lme2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lje2;


# direct methods
.method public constructor <init>(Lje2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme2;->a:Lje2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 1

    iget-object v0, p0, Lme2;->a:Lje2;

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    new-instance p1, Lhe2;

    iget-object v0, v0, Lje2;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Lhe2;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method

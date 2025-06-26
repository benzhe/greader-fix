.class public final synthetic Lqh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# instance fields
.field public final a:Lcn2;


# direct methods
.method public constructor <init>(Lcn2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh2;->a:Lcn2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lqh2;->a:Lcn2;

    check-cast p1, Lf61;

    .line 2
    iput-object p1, v0, Lcn2;->c:Lf61;

    return-object v0
.end method

CREATE TABLE [dbo].[Address] (
    [AddressId]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]   INT            NOT NULL,
    [AddressLine]  NVARCHAR (100) NOT NULL,
    [AddressLine2] NVARCHAR (100) NULL,
    [AddressType]  NVARCHAR (20)  NULL,
    [City]         NVARCHAR (50)  NULL,
    [PostalCode]   NVARCHAR (6)   NULL,
    [State]        NVARCHAR (20)  NULL,
    [Country]      NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([AddressId] ASC),
    CHECK ([AddressType]='Billing' OR [AddressType]='Shipping'),
    CHECK ([Country]='Canada' OR [Country]='United States'),
    CHECK (len([AddressLine])<=(100)),
    CHECK (len([AddressLine2])<=(100)),
    CHECK (len([City])<=(50)),
    CHECK (len([PostalCode])<=(6) AND len([PostalCode])>=(4) AND ([PostalCode] like '[0-9][0-9][0-9][0-9][0-9][0-9]' OR [PostalCode] like '[0-9][0-9][0-9][0-9][0-9]' OR [PostalCode] like '[0-9][0-9][0-9][0-9]')),
    CHECK (len([State])<=(20)),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
);

